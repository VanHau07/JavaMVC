package Traversal.Services.User;

import org.springframework.stereotype.Service;

import Traversal.Dto.PaginatesDto;

@Service
public interface IPaginationService {
	public PaginatesDto GetInforPaginates(int totalData, int limit, int currentPage);

}
